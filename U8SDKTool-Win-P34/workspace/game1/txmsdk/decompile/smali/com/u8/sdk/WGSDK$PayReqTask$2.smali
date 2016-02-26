.class Lcom/u8/sdk/WGSDK$PayReqTask$2;
.super Ljava/lang/Object;
.source "WGSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/WGSDK$PayReqTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

.field private final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/WGSDK$PayReqTask;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    iput-object p2, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->val$result:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    # getter for: Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;
    invoke-static {v0}, Lcom/u8/sdk/WGSDK$PayReqTask;->access$2(Lcom/u8/sdk/WGSDK$PayReqTask;)Lcom/u8/sdk/WGSDK;

    move-result-object v0

    # invokes: Lcom/u8/sdk/WGSDK;->hideProgressDialog()V
    invoke-static {v0}, Lcom/u8/sdk/WGSDK;->access$2(Lcom/u8/sdk/WGSDK;)V

    .line 453
    const-string v0, "1"

    iget-object v1, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 454
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "pay success"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    # getter for: Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;
    invoke-static {v0}, Lcom/u8/sdk/WGSDK$PayReqTask;->access$2(Lcom/u8/sdk/WGSDK$PayReqTask;)Lcom/u8/sdk/WGSDK;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f,\u5230\u8d26\u53ef\u80fd\u7a0d\u6709\u5ef6\u8fdf"

    # invokes: Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/WGSDK;->access$3(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    .line 460
    :goto_29
    return-void

    .line 457
    :cond_2a
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "pay fail"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask$2;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    # getter for: Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;
    invoke-static {v0}, Lcom/u8/sdk/WGSDK$PayReqTask;->access$2(Lcom/u8/sdk/WGSDK$PayReqTask;)Lcom/u8/sdk/WGSDK;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25,\u91cd\u65b0\u767b\u5f55\u540e,\u4f1a\u91cd\u65b0\u67e5\u8be2\u5e76\u652f\u4ed8"

    # invokes: Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/WGSDK;->access$3(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    goto :goto_29
.end method
