.class final Lcom/baidu/bdgame/sdk/obf/el$12;
.super Lcom/baidu/bdgame/sdk/obf/el$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/el$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/bdgame/sdk/obf/ej;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ga;-><init>()V

    return-object v0
.end method
