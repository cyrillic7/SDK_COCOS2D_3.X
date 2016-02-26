.class public Lcom/adobe/air/AJAudioTrack;
.super Landroid/media/AudioTrack;
.source "AJAudioTrack.java"


# static fields
.field private static sStreamType:I


# instance fields
.field private mBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    sget v1, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/adobe/air/AJAudioTrack;->mBuf:[B

    return-void
.end method

.method public static CreateTrack(IIII)Lcom/adobe/air/AJAudioTrack;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/adobe/air/AJAudioTrack;->ToAndroidChannelCount(I)I

    move-result v1

    invoke-static {p1}, Lcom/adobe/air/AJAudioTrack;->ToAndroidFormat(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    if-ge p3, v1, :cond_0

    move p3, v1

    :cond_0
    new-instance v1, Lcom/adobe/air/AJAudioTrack;

    invoke-static {p1}, Lcom/adobe/air/AJAudioTrack;->ToAndroidFormat(I)I

    move-result v2

    invoke-static {p2}, Lcom/adobe/air/AJAudioTrack;->ToAndroidChannelCount(I)I

    move-result v3

    invoke-direct {v1, p0, v2, v3, p3}, Lcom/adobe/air/AJAudioTrack;-><init>(IIII)V

    invoke-virtual {v1}, Lcom/adobe/air/AJAudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/adobe/air/AJAudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static SetStreamType(I)V
    .locals 0

    sput p0, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    return-void
.end method

.method public static ToAndroidChannelCount(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static ToAndroidFormat(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public GetBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AJAudioTrack;->mBuf:[B

    return-object v0
.end method

.method public playing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/air/AJAudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopped()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/adobe/air/AJAudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
