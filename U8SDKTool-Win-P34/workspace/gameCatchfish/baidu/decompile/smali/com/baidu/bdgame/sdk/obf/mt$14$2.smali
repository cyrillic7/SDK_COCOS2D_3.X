.class final Lcom/baidu/bdgame/sdk/obf/mt$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mt$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mt$14;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mt$14;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mt$14$2;->a:Lcom/baidu/bdgame/sdk/obf/mt$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$14$2;->a:Lcom/baidu/bdgame/sdk/obf/mt$14;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Lcom/baidu/bdgame/sdk/obf/mt;ILjava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-void
.end method
