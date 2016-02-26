.class public Lcom/baidu/bdgame/sdk/obf/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLcom/baidu/gamesdk/IResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->c:Z

    .line 191
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->a:Lcom/baidu/gamesdk/IResponse;

    .line 192
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->b:Landroid/content/Context;

    .line 193
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->c:Z

    .line 194
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/gamesdk/IResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/c$e;-><init>(Landroid/content/Context;ZLcom/baidu/gamesdk/IResponse;)V

    .line 203
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/gamesdk/IResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/c$e;-><init>(Landroid/content/Context;ZLcom/baidu/gamesdk/IResponse;)V

    .line 198
    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->g(Landroid/content/Context;)V

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_18

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->b:Landroid/content/Context;

    const-string v3, "bd_game_login_success"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 220
    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->c:Z

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;)V

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_15

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$e;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x15

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_15
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 4

    .prologue
    .line 224
    if-nez p1, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$e;->a()V

    .line 229
    :goto_5
    return-void

    .line 227
    :cond_6
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/c$e;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p3, Ljava/lang/Void;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/c$e;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
