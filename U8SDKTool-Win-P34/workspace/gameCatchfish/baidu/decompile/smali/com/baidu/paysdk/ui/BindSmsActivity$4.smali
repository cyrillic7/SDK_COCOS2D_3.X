.class Lcom/baidu/paysdk/ui/BindSmsActivity$4;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindSmsActivity;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$400(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    const-string v2, "ebpay_get_sms_code"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$400(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .registers 10

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mSendSms:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$400(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-virtual {v1}, Lcom/baidu/paysdk/ui/BindSmsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_resend"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
