.class Lcom/baidu/paysdk/ui/PcPwdCheckActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PcPwdCheckActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PcPwdCheckActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PcPwdCheckActivity$1;->this$0:Lcom/baidu/paysdk/ui/PcPwdCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PcPwdCheckActivity$1;->this$0:Lcom/baidu/paysdk/ui/PcPwdCheckActivity;

    # getter for: Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->mNext:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->access$000(Lcom/baidu/paysdk/ui/PcPwdCheckActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_30

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PcPwdCheckActivity$1;->this$0:Lcom/baidu/paysdk/ui/PcPwdCheckActivity;

    # getter for: Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->mClear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->access$200(Lcom/baidu/paysdk/ui/PcPwdCheckActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PcPwdCheckActivity$1;->this$0:Lcom/baidu/paysdk/ui/PcPwdCheckActivity;

    # getter for: Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->mPcPass:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/PcPwdCheckActivity;->access$100(Lcom/baidu/paysdk/ui/PcPwdCheckActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_30
    move v0, v1

    goto :goto_11

    :cond_32
    const/16 v1, 0x8

    goto :goto_2c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
