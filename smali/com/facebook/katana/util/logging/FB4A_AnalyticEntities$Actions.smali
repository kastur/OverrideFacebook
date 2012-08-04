.class public final Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;
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
    .line 77
    const-string v0, "click"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->a:Ljava/lang/String;

    .line 78
    const-string v0, "photo_swipe"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->b:Ljava/lang/String;

    .line 79
    const-string v0, "like"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->c:Ljava/lang/String;

    .line 80
    const-string v0, "unlike"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
