.class public Lcom/baidu/wallet/core/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Runnable;

.field public c:J

.field public d:J

.field public e:Z

.field f:J

.field final synthetic g:Lcom/baidu/wallet/core/a/b;


# direct methods
.method public constructor <init>(Lcom/baidu/wallet/core/a/b;JJZLjava/lang/String;Ljava/lang/Runnable;)V
    .registers 11

    iput-object p1, p0, Lcom/baidu/wallet/core/a/b$a;->g:Lcom/baidu/wallet/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/baidu/wallet/core/a/b$a;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/baidu/wallet/core/a/b$a;->f:J

    iput-wide p4, p0, Lcom/baidu/wallet/core/a/b$a;->c:J

    iput-boolean p6, p0, Lcom/baidu/wallet/core/a/b$a;->e:Z

    iput-object p8, p0, Lcom/baidu/wallet/core/a/b$a;->b:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/baidu/wallet/core/a/b$a;->a:Ljava/lang/String;

    return-void
.end method
