.class Lcom/baidu/bdgame/sdk/obf/a$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/platformsdk/OrderStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
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
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$f;->a:Lcom/baidu/gamesdk/IResponse;

    .line 331
    return-void
.end method

.method public static a(Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/a$f;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$f;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/a$f;-><init>(Lcom/baidu/gamesdk/IResponse;)V

    .line 335
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/platformsdk/OrderStatus;)V
    .registers 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$f;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_c

    .line 341
    packed-switch p1, :pswitch_data_14

    .line 346
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$f;->a:Lcom/baidu/gamesdk/IResponse;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 350
    :cond_c
    :goto_c
    return-void

    .line 343
    :pswitch_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$f;->a:Lcom/baidu/gamesdk/IResponse;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 341
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 325
    check-cast p3, Lcom/baidu/platformsdk/OrderStatus;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$f;->a(ILjava/lang/String;Lcom/baidu/platformsdk/OrderStatus;)V

    return-void
.end method
