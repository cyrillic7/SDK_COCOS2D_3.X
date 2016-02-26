.class public Lcom/baidu/bdgame/sdk/obf/gx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:Lcom/baidu/bdgame/sdk/obf/iw;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/gx;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gx;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gx;->e:I

    .line 33
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gx;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    .line 27
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gx;->e:I

    return v0
.end method
