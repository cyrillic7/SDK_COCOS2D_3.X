.class Lcom/baidu/bdgame/sdk/obf/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
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

.field private b:Z


# direct methods
.method constructor <init>(Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->b:Z

    .line 171
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->a:Lcom/baidu/gamesdk/IResponse;

    .line 172
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->b:Z

    .line 176
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/f;)V
    .registers 7

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->b:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_34

    .line 181
    invoke-interface {p2}, Lcom/baidu/bdgame/sdk/obf/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bd_game_session_invalid"

    invoke-static {p1, v2}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_25

    const-string v0, ""

    :cond_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/e$c;->a:Lcom/baidu/gamesdk/IResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    :cond_34
    return-void
.end method
