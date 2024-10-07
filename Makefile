run: 
	kurtosis run --enclave lummio-network github.com/ethpandaops/ethereum-package --args-file network_params.yaml

copy:
	docker cp $(cl-id):/network-configs ./cl
	docker cp $(cl-id):/jwt ./cl
	docker cp $(cl-id):/data/lighthouse/beacon-data ./cl/data/lighthouse

	docker cp $(el-id):/jwt ./el
	docker cp $(el-id):/network-configs ./el

stop:
	kurtosis enclave rm lummio-network
	kurtosis clean -a