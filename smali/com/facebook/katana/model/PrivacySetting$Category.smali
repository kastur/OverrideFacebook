.class public final enum Lcom/facebook/katana/model/PrivacySetting$Category;
.super Ljava/lang/Enum;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/model/PrivacySetting$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/model/PrivacySetting$Category;

.field public static final enum composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

.field public static final enum places:Lcom/facebook/katana/model/PrivacySetting$Category;

.field public static final enum publisher:Lcom/facebook/katana/model/PrivacySetting$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/facebook/katana/model/PrivacySetting$Category;

    const-string v1, "publisher"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/PrivacySetting$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/PrivacySetting$Category;->publisher:Lcom/facebook/katana/model/PrivacySetting$Category;

    new-instance v0, Lcom/facebook/katana/model/PrivacySetting$Category;

    const-string v1, "places"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/model/PrivacySetting$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/PrivacySetting$Category;->places:Lcom/facebook/katana/model/PrivacySetting$Category;

    new-instance v0, Lcom/facebook/katana/model/PrivacySetting$Category;

    const-string v1, "composer_sticky"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/model/PrivacySetting$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/model/PrivacySetting$Category;

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->publisher:Lcom/facebook/katana/model/PrivacySetting$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->places:Lcom/facebook/katana/model/PrivacySetting$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/model/PrivacySetting$Category;->$VALUES:[Lcom/facebook/katana/model/PrivacySetting$Category;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/model/PrivacySetting$Category;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PrivacySetting$Category;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/model/PrivacySetting$Category;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/katana/model/PrivacySetting$Category;->$VALUES:[Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-virtual {v0}, [Lcom/facebook/katana/model/PrivacySetting$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/PrivacySetting$Category;

    return-object v0
.end method
