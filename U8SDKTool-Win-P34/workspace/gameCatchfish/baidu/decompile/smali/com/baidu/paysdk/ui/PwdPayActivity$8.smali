.class Lcom/baidu/paysdk/ui/PwdPayActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$8;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$8;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$8;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$8;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wallet_base_help_phone_no"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$8;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1300(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
