.class final Lcom/baidu/bdgame/sdk/obf/fr$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/gp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fr;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fr$11;->a:Lcom/baidu/bdgame/sdk/obf/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V
    .registers 12

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr$11;->a:Lcom/baidu/bdgame/sdk/obf/fr;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fr;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V

    .line 139
    return-void
.end method
