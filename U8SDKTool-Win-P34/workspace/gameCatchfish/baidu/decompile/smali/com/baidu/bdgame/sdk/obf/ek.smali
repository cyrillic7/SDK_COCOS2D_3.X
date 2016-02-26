.class public abstract Lcom/baidu/bdgame/sdk/obf/ek;
.super Lcom/baidu/bdgame/sdk/obf/ej;
.source "SourceFile"


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ek;->k:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    .line 24
    if-nez v0, :cond_a

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_9
    return v0

    .line 27
    :cond_a
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    .line 28
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paychannel ok"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    goto :goto_9
.end method
