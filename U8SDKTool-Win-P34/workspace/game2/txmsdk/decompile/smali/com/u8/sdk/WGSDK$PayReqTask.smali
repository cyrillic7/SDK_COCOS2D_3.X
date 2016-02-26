.class Lcom/u8/sdk/WGSDK$PayReqTask;
.super Landroid/os/AsyncTask;
.source "WGSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/WGSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayReqTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private showTip:Z

.field final synthetic this$0:Lcom/u8/sdk/WGSDK;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/WGSDK;Z)V
    .registers 4
    .param p2, "showTip"    # Z

    .prologue
    .line 427
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->showTip:Z

    .line 428
    iput-boolean p2, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->showTip:Z

    .line 429
    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/WGSDK$PayReqTask;)Lcom/u8/sdk/WGSDK;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/WGSDK$PayReqTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 449
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 450
    .local v0, "opType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p1, v3

    .line 451
    .local v1, "orderID":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p1, v3

    .line 454
    .local v2, "zoneID":Ljava/lang/String;
    iget-object v3, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->this$0:Lcom/u8/sdk/WGSDK;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/u8/sdk/WGSDK;->reqCharge(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v1, v2}, Lcom/u8/sdk/WGSDK;->access$1(Lcom/u8/sdk/WGSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/WGSDK$PayReqTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->showTip:Z

    if-eqz v0, :cond_10

    .line 460
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/WGSDK$PayReqTask$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/WGSDK$PayReqTask$2;-><init>(Lcom/u8/sdk/WGSDK$PayReqTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 476
    :cond_10
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/u8/sdk/WGSDK$PayReqTask;->showTip:Z

    if-eqz v0, :cond_10

    .line 433
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/WGSDK$PayReqTask$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/WGSDK$PayReqTask$1;-><init>(Lcom/u8/sdk/WGSDK$PayReqTask;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 444
    :cond_10
    return-void
.end method
