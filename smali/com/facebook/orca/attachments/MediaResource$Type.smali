.class public final enum Lcom/facebook/orca/attachments/MediaResource$Type;
.super Ljava/lang/Enum;
.source "MediaResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/attachments/MediaResource$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/attachments/MediaResource$Type;

.field public static final enum AUDIO:Lcom/facebook/orca/attachments/MediaResource$Type;

.field public static final enum PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

.field public static final enum VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource$Type;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    new-instance v0, Lcom/facebook/orca/attachments/MediaResource$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/attachments/MediaResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    new-instance v0, Lcom/facebook/orca/attachments/MediaResource$Type;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/attachments/MediaResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/MediaResource$Type;->AUDIO:Lcom/facebook/orca/attachments/MediaResource$Type;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/attachments/MediaResource$Type;

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->AUDIO:Lcom/facebook/orca/attachments/MediaResource$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/attachments/MediaResource$Type;->$VALUES:[Lcom/facebook/orca/attachments/MediaResource$Type;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource$Type;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/attachments/MediaResource$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/orca/attachments/MediaResource$Type;->$VALUES:[Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-virtual {v0}, [Lcom/facebook/orca/attachments/MediaResource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/attachments/MediaResource$Type;

    return-object v0
.end method
