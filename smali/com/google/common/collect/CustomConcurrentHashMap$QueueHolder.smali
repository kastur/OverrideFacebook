.class Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# static fields
.field static final a:Lcom/google/common/base/FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;->a:Lcom/google/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
