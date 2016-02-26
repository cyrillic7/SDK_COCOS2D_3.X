.class Lcom/u8/sdk/U8SDK$1;
.super Ljava/lang/Object;
.source "U8SDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8SDK;->onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8SDK;

.field private final synthetic val$order:Lcom/u8/sdk/U8Order;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8SDK;Lcom/u8/sdk/U8Order;Lcom/u8/sdk/PayParams;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8SDK$1;->this$0:Lcom/u8/sdk/U8SDK;

    iput-object p2, p0, Lcom/u8/sdk/U8SDK$1;->val$order:Lcom/u8/sdk/U8Order;

    iput-object p3, p0, Lcom/u8/sdk/U8SDK$1;->val$params:Lcom/u8/sdk/PayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$1;->val$order:Lcom/u8/sdk/U8Order;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$1;->this$0:Lcom/u8/sdk/U8SDK;

    # getter for: Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/u8/sdk/U8SDK;->access$0(Lcom/u8/sdk/U8SDK;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, " \u5931\u8d25 "

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$1;->this$0:Lcom/u8/sdk/U8SDK;

    # getter for: Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/u8/sdk/U8SDK;->access$0(Lcom/u8/sdk/U8SDK;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8ba2\u5355\u53f7:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$1;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$1;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0}, Lcom/u8/sdk/U8Order;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    :cond_1
    const-string v1, "u8pay======================"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/u8/sdk/U8SDK$1;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v3}, Lcom/u8/sdk/PayParams;->getMoney()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/U8SDK$1;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1, v2}, Lcom/u8/sdk/plugin/U8Pay;->pay(Lcom/u8/sdk/PayParams;)V

    goto :goto_0
.end method
