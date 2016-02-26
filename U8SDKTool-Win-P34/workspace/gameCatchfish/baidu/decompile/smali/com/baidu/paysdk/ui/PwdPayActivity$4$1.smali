.class Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$4;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity$4;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$4;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$4;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-virtual {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/base/controllers/PayController;->bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method
