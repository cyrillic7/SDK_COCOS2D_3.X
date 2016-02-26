.class final Lcom/baidu/bdgame/sdk/obf/cp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cp;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cp;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cp$3;->a:Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 139
    if-eqz p1, :cond_7

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp$3;->a:Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cp;->c(Lcom/baidu/bdgame/sdk/obf/cp;)V

    .line 142
    :cond_7
    return-void
.end method
