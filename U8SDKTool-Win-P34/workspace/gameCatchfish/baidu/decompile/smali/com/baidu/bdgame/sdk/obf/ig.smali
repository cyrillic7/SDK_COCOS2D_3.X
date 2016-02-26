.class public Lcom/baidu/bdgame/sdk/obf/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ig;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ig;->a:Z

    .line 17
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ig;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ig;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ig;->c:Ljava/lang/String;

    return-object v0
.end method
