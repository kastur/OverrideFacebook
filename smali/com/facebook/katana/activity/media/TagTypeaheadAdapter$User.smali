.class public Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;
.super Ljava/lang/Object;
.source "TagTypeaheadAdapter.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a:Ljava/lang/String;

    .line 175
    iput-wide p2, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->c:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/katana/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a:Ljava/lang/String;

    return-object v0
.end method
