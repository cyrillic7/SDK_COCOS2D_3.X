.class public final Lcom/tencent/beacon/event/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJJLjava/util/Map;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tencent/beacon/event/f;->a:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/tencent/beacon/event/f;->b:Z

    .line 17
    iput-wide p3, p0, Lcom/tencent/beacon/event/f;->c:J

    .line 18
    iput-wide p5, p0, Lcom/tencent/beacon/event/f;->d:J

    .line 19
    iput-object p7, p0, Lcom/tencent/beacon/event/f;->e:Ljava/util/Map;

    .line 20
    iput-boolean p8, p0, Lcom/tencent/beacon/event/f;->f:Z

    .line 21
    return-void
.end method
