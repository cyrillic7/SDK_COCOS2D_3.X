.class Lcom/baidu/bdgame/sdk/obf/a$b;
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
    name = "b"
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

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->a:Lcom/baidu/gamesdk/IResponse;

    .line 83
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->b:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->c:I

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/a$b;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/a$b;-><init>(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)V

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->a:Lcom/baidu/gamesdk/IResponse;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 104
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 107
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 119
    :cond_5
    :goto_5
    return-void

    .line 111
    :cond_6
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x15

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/a$b;->b:Landroid/content/Context;

    const-string v3, "bd_game_login_user_cancel"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 76
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$b;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 4

    .prologue
    .line 94
    if-nez p1, :cond_6

    .line 95
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/a$b;->a()V

    .line 99
    :goto_5
    return-void

    .line 97
    :cond_6
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/a$b;->a(Ljava/lang/String;)V

    goto :goto_5
.end method
