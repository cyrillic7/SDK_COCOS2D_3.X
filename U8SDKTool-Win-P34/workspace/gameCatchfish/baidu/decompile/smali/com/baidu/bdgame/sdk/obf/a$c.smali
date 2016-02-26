.class Lcom/baidu/bdgame/sdk/obf/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/platformsdk/PayOrderInfo;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->a:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->b:Lcom/baidu/platformsdk/PayOrderInfo;

    .line 286
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->c:Ljava/lang/String;

    .line 287
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->d:Lcom/baidu/gamesdk/IResponse;

    .line 291
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 274
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$c;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 9

    .prologue
    .line 295
    if-nez p1, :cond_1b

    .line 299
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->b:Lcom/baidu/platformsdk/PayOrderInfo;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->d:Lcom/baidu/gamesdk/IResponse;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/a$e;->a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$e;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 314
    :cond_1a
    :goto_1a
    return-void

    .line 309
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->d:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_1a

    .line 310
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->d:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x1e

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/a$c;->b:Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-interface {v0, v1, p2, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a
.end method
