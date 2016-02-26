.class final Lcom/baidu/bdgame/sdk/obf/ga$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/gp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ga;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$12;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V
    .registers 12

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$12;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;IJ)V

    .line 158
    return-void
.end method
