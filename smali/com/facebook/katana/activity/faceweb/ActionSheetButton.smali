.class public Lcom/facebook/katana/activity/faceweb/ActionSheetButton;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "ActionSheetButton.java"


# instance fields
.field public final callback:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "callback"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "title"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;->title:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;->type:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/ActionSheetButton;->callback:Ljava/lang/String;

    .line 22
    return-void
.end method
