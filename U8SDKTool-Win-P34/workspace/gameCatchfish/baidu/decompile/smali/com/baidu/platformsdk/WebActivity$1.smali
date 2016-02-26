.class final Lcom/baidu/platformsdk/WebActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/WebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/WebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/WebActivity;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/platformsdk/WebActivity$1;->a:Lcom/baidu/platformsdk/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 121
    const-string v0, "WebActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platformsdk/WebActivity$1;->a:Lcom/baidu/platformsdk/WebActivity;

    invoke-static {v2}, Lcom/baidu/platformsdk/WebActivity;->a(Lcom/baidu/platformsdk/WebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity$1;->a:Lcom/baidu/platformsdk/WebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/WebActivity;->b(Lcom/baidu/platformsdk/WebActivity;)Lcom/baidu/bdgame/sdk/obf/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity$1;->a:Lcom/baidu/platformsdk/WebActivity;

    iget-object v2, p0, Lcom/baidu/platformsdk/WebActivity$1;->a:Lcom/baidu/platformsdk/WebActivity;

    invoke-static {v2}, Lcom/baidu/platformsdk/WebActivity;->a(Lcom/baidu/platformsdk/WebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Ljava/lang/String;)V

    .line 123
    return-void
.end method
