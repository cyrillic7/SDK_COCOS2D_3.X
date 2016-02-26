.class Lcom/u8/sdk/U8SDK$OrderTask;
.super Landroid/os/AsyncTask;
.source "U8SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/U8SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/u8/sdk/PayParams;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/U8Order;",
        ">;"
    }
.end annotation


# instance fields
.field private payParams:Lcom/u8/sdk/PayParams;

.field final synthetic this$0:Lcom/u8/sdk/U8SDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8SDK;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/u8/sdk/U8SDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-static {v0}, Lcom/u8/sdk/U8OrderUtils;->getOrder(Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/u8/sdk/PayParams;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$OrderTask;->doInBackground([Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/U8Order;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    # getter for: Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/u8/sdk/U8SDK;->access$0(Lcom/u8/sdk/U8SDK;)Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/u8/sdk/U8SDK;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/U8SDK;->access$2(Lcom/u8/sdk/U8SDK;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/U8SDK;->onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/u8/sdk/U8Order;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$OrderTask;->onPostExecute(Lcom/u8/sdk/U8Order;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    iget-object v1, p0, Lcom/u8/sdk/U8SDK$OrderTask;->this$0:Lcom/u8/sdk/U8SDK;

    # getter for: Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/u8/sdk/U8SDK;->access$0(Lcom/u8/sdk/U8SDK;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u53f7\uff0c\u8bf7\u7a0d\u540e..."

    # invokes: Lcom/u8/sdk/U8SDK;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->access$1(Lcom/u8/sdk/U8SDK;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
