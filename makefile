HOST = medmouine/
IMAGE = personal-blog:latest

all: build-image push-image

.PHONY: build-image
build-image:
	docker build --build-arg google_analystics_id=${GOOGLE_ANALYTICS_ID} \
                --build-arg algolia_app_id=${ALGOLIA_APP_ID} \
                --build-arg algolia_search_only_api_key=${ALGOLIA_SEARCH_ONLY_API_KEY} \
                --build-arg algolia_admin_api_key=${ALGOLIA_ADMIN_API_KEY} \
                --build-arg algolia_index_name=${ALGOLIA_INDEX_NAME} \
                --build-arg fb_app_id=${FB_APP_ID} \
                -t $(HOST)$(IMAGE) .

.PHONY: push-image
push-image:
	docker push $(HOST)$(IMAGE)
