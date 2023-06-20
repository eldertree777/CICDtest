# CICDtest

- 12시간 삽질
- github action > S3, CodeDeploy > EC2 
- 자동 배포 구현

## FLOW
- master push 발생시 action 발생
  - build 후 필요한 jar, .sh , appspec.yml 압축후 복사
  - S3에 배포
  - CodeDeploy 실행
- Codedeploy를 통해 appspec 실행
  - .sh 실행
- 업데이트된 배포파일 실행전 확인
  - 해당 파일이 실행중이면 kill 해버림
  - nohup 으로 백그라운드 실행

## 결과
- master branch push 하면 Spring boot APi Server가 백그라운드 실행
- Client, Front Application은 8080포트로 해당 API 호출해버림


### Q.
- 전체적인 Flow
- 권한설정
- workflow.yml
