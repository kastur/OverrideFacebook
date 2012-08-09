.class public final Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;
.super Ljava/lang/Object;
.source "FB4A_AnalyticEntities.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "fbobj"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->a:Ljava/lang/String;

    .line 86
    const-string v0, "menu_item"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->b:Ljava/lang/String;

    .line 87
    const-string v0, "button"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->c:Ljava/lang/String;

    .line 88
    const-string v0, "checkbox"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
