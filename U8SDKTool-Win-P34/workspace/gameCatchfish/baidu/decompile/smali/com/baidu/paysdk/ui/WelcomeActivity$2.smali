.class Lcom/baidu/paysdk/ui/WelcomeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/api/ILoginBackListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/WelcomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    # invokes: Lcom/baidu/paysdk/ui/WelcomeActivity;->loadData()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->access$100(Lcom/baidu/paysdk/ui/WelcomeActivity;)V

    return-void
.end method
