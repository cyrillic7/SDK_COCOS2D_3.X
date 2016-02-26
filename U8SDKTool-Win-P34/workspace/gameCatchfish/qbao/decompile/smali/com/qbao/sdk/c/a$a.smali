.class public Lcom/qbao/sdk/c/a$a;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final dJ:Ljava/lang/String; = "appCode"

.field public static final dK:Ljava/lang/String; = "orderNo"

.field public static final dL:Ljava/lang/String; = "payCode"

.field public static final dM:Ljava/lang/String; = "propName"

.field public static final dN:Ljava/lang/String; = "propPrice"

.field public static final dO:Ljava/lang/String; = "payNotifyUrl"

.field public static final dP:Ljava/lang/String; = "signCode"

.field public static final dQ:Ljava/lang/String; = "sdkflowId"

.field public static final dR:Ljava/lang/String; = "useBqFlag"

.field public static final dS:Ljava/lang/String; = "msgFlag"

.field public static final dT:Ljava/lang/String; = "bqAmount"

.field public static final dU:Ljava/lang/String; = "qbAmount"

.field public static final dV:Ljava/lang/String; = "transDate"


# instance fields
.field final synthetic dW:Lcom/qbao/sdk/c/a;


# direct methods
.method public constructor <init>(Lcom/qbao/sdk/c/a;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/qbao/sdk/c/a$a;->dW:Lcom/qbao/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
