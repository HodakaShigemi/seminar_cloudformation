# CloudFormation hands-on seminar

CloudFormationハンズオンセミナーで使用した資料です

## USAGE

実行の前提として、SSM パラメータストアを利用して、DBのユーザー名とパスワードを設定するようなコードになっています。

パラメータ名
DBユーザー名(平文): /seminar/cfn-handson/db-user
DBパスワード(シークレット): /seminar/cfn-handson/db-pass

オプションなしで実行するとChange Setを作成します。
`./01_vpc.sh`

deployオプションをつけて実行すると、リソースを実際に作成します。
`./01_vpc.sh deploy`

クロススタック参照しているリソースがある為、スクリプトの実行は01から順番に行ってください。それぞれのスタックの作成が完了したら次のスクリプトを実行してください。
