run: 
	kurtosis run --enclave lummio-network github.com/ethpandaops/ethereum-package --args-file network_params.yaml

copy:
	docker cp $(id):/network-configs ./network-configs
	docker cp $(id):/jwt ./jwt
	docker cp $(id):/data ./data

stop:
	kurtosis enclave stop lummio-network
	kurtosis enclave rm lummio-network
	kurtosis clean -a