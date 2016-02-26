.class public Lcom/qbao/sdk/e/a$a;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final fC:I = 0x0

.field public static final fD:I = 0x1

.field public static final fE:I = 0x2

.field public static final fF:I = 0x3


# instance fields
.field final synthetic fG:Lcom/qbao/sdk/e/a;


# direct methods
.method public constructor <init>(Lcom/qbao/sdk/e/a;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/qbao/sdk/e/a$a;->fG:Lcom/qbao/sdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
