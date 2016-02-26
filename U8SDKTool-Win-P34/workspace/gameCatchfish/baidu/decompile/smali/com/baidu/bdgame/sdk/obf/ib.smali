.class public Lcom/baidu/bdgame/sdk/obf/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ib;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ib;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ib;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ib;->b:Ljava/lang/String;

    .line 18
    return-void
.end method
