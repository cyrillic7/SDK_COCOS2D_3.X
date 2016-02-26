.class final Lcom/baidu/bdgame/sdk/obf/ay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/LoginActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 2

    .prologue
    .line 634
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$8;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 638
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$8;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->u(Lcom/baidu/bdgame/sdk/obf/ay;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 639
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$8;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->v(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 641
    :cond_10
    return-void
.end method
