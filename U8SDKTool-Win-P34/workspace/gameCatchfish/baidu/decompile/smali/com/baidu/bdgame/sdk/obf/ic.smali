.class public Lcom/baidu/bdgame/sdk/obf/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ic$a;
    }
.end annotation


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/iy;

.field private d:Lcom/baidu/bdgame/sdk/obf/ic$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ic$a;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ic;->d:Lcom/baidu/bdgame/sdk/obf/ic$a;

    return-object v0
.end method

.method public a(D)V
    .registers 4

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/ic;->a:D

    .line 38
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ic$a;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ic;->d:Lcom/baidu/bdgame/sdk/obf/ic$a;

    .line 30
    return-void
.end method

.method a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ic;->c:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ic;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public b()D
    .registers 3

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ic;->a:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ic;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ic;->c:Lcom/baidu/bdgame/sdk/obf/iy;

    return-object v0
.end method
