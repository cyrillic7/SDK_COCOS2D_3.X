.class final Lcom/baidu/bdgame/sdk/obf/he$5;
.super Lcom/baidu/bdgame/sdk/obf/he;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/he;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 5

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bdgame/sdk/obf/he;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/he$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 3

    .prologue
    .line 121
    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/iw;->a(F)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/iw;->d(I)V

    .line 123
    return-void
.end method
