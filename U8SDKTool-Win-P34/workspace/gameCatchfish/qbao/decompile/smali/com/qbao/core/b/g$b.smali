.class public Lcom/qbao/core/b/g$b;
.super Ljava/lang/Object;
.source "TelephonyMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd


# instance fields
.field final synthetic m:Lcom/qbao/core/b/g;


# direct methods
.method public constructor <init>(Lcom/qbao/core/b/g;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qbao/core/b/g$b;->m:Lcom/qbao/core/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
