.class Lcom/baidu/paysdk/ui/BindSmsActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$200(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->stopCountDown()V

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mBindRequest:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$300(Lcom/baidu/paysdk/ui/BindSmsActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_d
    :pswitch_d
    return-void

    :pswitch_e
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->bindSuccess()V

    goto :goto_d

    :pswitch_16
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->forgetPasswdSucceed(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_1e
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->completeCardSuccess()V

    goto :goto_d

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_16
        :pswitch_d
        :pswitch_1e
    .end packed-switch
.end method
