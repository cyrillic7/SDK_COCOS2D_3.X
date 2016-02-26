.class Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;

.field final synthetic val$tips:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->this$0:Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->val$tips:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->val$tips:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->val$tips:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->val$tips:Ljava/lang/String;

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->val$tips:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->this$0:Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;

    # getter for: Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;->access$100(Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_41
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog$1;->this$0:Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;

    # getter for: Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;->access$000(Lcom/baidu/paysdk/ui/widget/IdentifyCodeGetFailDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ebpay_text_link_nomal"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
