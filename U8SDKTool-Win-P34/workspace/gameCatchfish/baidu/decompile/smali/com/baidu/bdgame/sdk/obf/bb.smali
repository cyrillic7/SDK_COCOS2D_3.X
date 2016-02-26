.class public Lcom/baidu/bdgame/sdk/obf/bb;
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
    .line 9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 12
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bb;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bb;->b:Ljava/lang/String;

    .line 19
    return-void
.end method
