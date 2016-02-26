.class Lcom/u8/sdk/WGSDK$PayReqTask$1;
.super Ljava/lang/Object;
.source "WGSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/WGSDK$PayReqTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/WGSDK$PayReqTask;


# direct methods
.method constructor <init>(Lcom/u8/sdk/WGSDK$PayReqTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$PayReqTask$1;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask$1;->this$1:Lcom/u8/sdk/WGSDK$PayReqTask;

    # getter for: Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;
    invoke-static {v0}, Lcom/u8/sdk/WGSDK$PayReqTask;->access$2(Lcom/u8/sdk/WGSDK$PayReqTask;)Lcom/u8/sdk/WGSDK;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5904\u7406,\u8bf7\u7a0d\u5019..."

    # invokes: Lcom/u8/sdk/WGSDK;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/WGSDK;->access$0(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    .line 426
    return-void
.end method
