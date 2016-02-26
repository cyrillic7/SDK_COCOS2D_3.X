.class Lcom/baidu/bdgame/sdk/obf/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/platformsdk/PayOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/IResponse;
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
.method private constructor <init>(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    .line 232
    return-void
.end method

.method public static a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/a$e;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$e;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/a$e;-><init>(Lcom/baidu/gamesdk/IResponse;)V

    .line 236
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V
    .registers 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_e

    .line 242
    sparse-switch p1, :sswitch_data_26

    .line 254
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x20

    invoke-interface {v0, v1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 258
    :cond_e
    :goto_e
    return-void

    .line 244
    :sswitch_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 247
    :sswitch_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x1e

    invoke-interface {v0, v1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 250
    :sswitch_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x1f

    invoke-interface {v0, v1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 242
    :sswitch_data_26
    .sparse-switch
        -0xbba -> :sswitch_1e
        -0xbb9 -> :sswitch_16
        0x0 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 226
    check-cast p3, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$e;->a(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V

    return-void
.end method
