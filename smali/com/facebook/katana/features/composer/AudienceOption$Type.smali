.class public final enum Lcom/facebook/katana/features/composer/AudienceOption$Type;
.super Ljava/lang/Enum;
.source "AudienceOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/features/composer/AudienceOption$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

.field public static final enum FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

.field public static final enum PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;

    const-string v1, "PRIVACY_SETTING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/features/composer/AudienceOption$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    .line 7
    new-instance v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;

    const-string v1, "FRIEND_LIST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/features/composer/AudienceOption$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/features/composer/AudienceOption$Type;

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->$VALUES:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/features/composer/AudienceOption$Type;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/features/composer/AudienceOption$Type;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->$VALUES:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-virtual {v0}, [Lcom/facebook/katana/features/composer/AudienceOption$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/features/composer/AudienceOption$Type;

    return-object v0
.end method
