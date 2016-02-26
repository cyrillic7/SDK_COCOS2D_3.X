.class Lcom/baidu/bdgame/sdk/obf/a$d;
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
    name = "d"
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


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->a:Lcom/baidu/gamesdk/IResponse;

    .line 145
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->b:Landroid/content/Context;

    .line 146
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/a$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/a$d;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$d;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/a$d;-><init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 150
    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->a:Lcom/baidu/gamesdk/IResponse;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 157
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->a:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$d;->a:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0x14

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_c
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 139
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/a$d;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 5

    .prologue
    .line 168
    if-nez p1, :cond_6

    .line 169
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/a$d;->a()V

    .line 173
    :cond_5
    :goto_5
    return-void

    .line 170
    :cond_6
    const/16 v0, -0x3ea

    if-ne p1, v0, :cond_5

    .line 171
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/a$d;->a(Ljava/lang/String;)V

    goto :goto_5
.end method
