.class Lcom/qbao/sdk/a/e$2;
.super Ljava/lang/Object;
.source "QbaoPayMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/e;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

.field private final synthetic dq:Ljava/lang/String;

.field private final synthetic dr:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/e$2;->dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    iput-object p2, p0, Lcom/qbao/sdk/a/e$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/qbao/sdk/a/e$2;->dr:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-nez v0, :cond_f

    .line 175
    const-string v0, "QbaoSdk"

    const-string v1, "getInstance==null for pay SDK,"

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    :cond_e
    :goto_e
    return-void

    .line 179
    :cond_f
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    if-nez v0, :cond_1b

    .line 180
    const-string v0, "QbaoSdk"

    const-string v1, "payCallback==null for pay SDK,"

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 184
    :cond_1b
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->a(Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    .line 186
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dq:Ljava/lang/String;

    if-eqz v0, :cond_2e

    const-string v0, ""

    iget-object v1, p0, Lcom/qbao/sdk/a/e$2;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 187
    :cond_2e
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, "payinfo is not available."

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 192
    :cond_39
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/qbao/sdk/a/e$2;->dp:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    invoke-static {v0, v1}, Lcom/qbao/sdk/a/e;->b(Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/qbao/sdk/a/e$2;->dr:Landroid/content/Context;

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->s(Landroid/content/Context;)V

    goto :goto_e
.end method
