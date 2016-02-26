.class final Lcom/baidu/bdgame/sdk/obf/cv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/du$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dp;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/cn;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/cv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 4

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cv$2;->c:Lcom/baidu/bdgame/sdk/obf/cv;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cv$2;->a:Lcom/baidu/bdgame/sdk/obf/dp;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cv$2;->b:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 163
    if-nez p1, :cond_10

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$2;->a:Lcom/baidu/bdgame/sdk/obf/dp;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dp;->a(I)V

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$2;->b:Lcom/baidu/bdgame/sdk/obf/cn;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(I)V

    .line 168
    :cond_10
    return-void
.end method
