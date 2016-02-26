.class public Lcom/baidu/bdgame/sdk/obf/hw;
.super Lcom/baidu/bdgame/sdk/obf/hg;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hw;->a:Ljava/lang/String;

    .line 21
    return-void
.end method
