# gitops_terraform
---
AWS 인프라 구축을 위한 테라폼 코드
- 변수 설정 :  variable.tf
  리전(ap-northeast-2), VPC, Subnet  정보, Bastion  로그인 키(**NAME-gitops-key : 미리생성필요**)
  EKS이름(seongmi-gitops), 클러스터 버전(1.30),  네임스페이스: petclinic , Node Instance type(t3.medium) 2개, 
- Cloud Provider 등록 : providers.tf
- 클러스터 엔드포인트, 보안ID, ECR 저장소 URL 출력 : output.tf
- 인프라 구축 :  main.tf
  - main.tf  에서 module로 구성된, iam, eks, ecr, secruritygroup, vpc 등을 호출해서 실행
