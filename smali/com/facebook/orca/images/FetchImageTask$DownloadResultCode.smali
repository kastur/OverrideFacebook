.class final enum Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;
.super Ljava/lang/Enum;
.source "FetchImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field public static final enum DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field public static final enum IO_EXCEPTION:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field public static final enum NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field public static final enum OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

.field public static final enum SUCCESS:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 200
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    const-string v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 201
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    const-string v1, "DECODE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 202
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 203
    new-instance v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    .line 198
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->$VALUES:[Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;
    .locals 1
    .parameter

    .prologue
    .line 198
    const-class v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->$VALUES:[Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-virtual {v0}, [Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    return-object v0
.end method
