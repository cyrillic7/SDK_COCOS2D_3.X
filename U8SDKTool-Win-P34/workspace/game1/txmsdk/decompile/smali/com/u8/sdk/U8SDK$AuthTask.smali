.class Lcom/u8/sdk/U8SDK$AuthTask;
.super Landroid/os/AsyncTask;
.source "U8SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/U8SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/verify/UToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8SDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8SDK;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8SDK$AuthTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;
    .locals 3
    .param p1    # [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/u8/sdk/verify/U8Verify;->auth(Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$AuthTask;->doInBackground([Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/verify/UToken;)V
    .locals 1
    .param p1    # Lcom/u8/sdk/verify/UToken;

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$AuthTask;->this$0:Lcom/u8/sdk/U8SDK;

    # invokes: Lcom/u8/sdk/U8SDK;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    invoke-static {v0, p1}, Lcom/u8/sdk/U8SDK;->access$0(Lcom/u8/sdk/U8SDK;Lcom/u8/sdk/verify/UToken;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/u8/sdk/verify/UToken;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$AuthTask;->onPostExecute(Lcom/u8/sdk/verify/UToken;)V

    return-void
.end method
