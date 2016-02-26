.class public Lcom/baidu/bdgame/sdk/obf/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/jc;->a:I

    .line 5
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/jc;->b:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jc;->c:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jc;->d:Ljava/lang/String;

    return-void
.end method
