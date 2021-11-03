; ModuleID = 'source.ll'
source_filename = "source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca [100 x i32], align 16
  store i32 0, i32* %1, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  %8 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %8) #2
  %9 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %9) #2
  store i32 0, i32* %2, align 4, !tbaa !2
  %.promoted1 = load i32, i32* %2, align 4, !tbaa !2
  br label %10

10:                                               ; preds = %18, %0
  %11 = phi i32 [ %19, %18 ], [ %.promoted1, %0 ]
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %14
  store i32 %11, i32* %15, align 4, !tbaa !2
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %16
  store i32 %11, i32* %17, align 4, !tbaa !2
  br label %18

18:                                               ; preds = %13
  %19 = add nsw i32 %11, 1
  br label %10, !llvm.loop !6

20:                                               ; preds = %10
  %.lcssa2 = phi i32 [ %11, %10 ]
  store i32 %.lcssa2, i32* %2, align 4, !tbaa !2
  store i32 0, i32* %2, align 4, !tbaa !2
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %.promoted = load i32, i32* %2, align 4, !tbaa !2
  br label %23

23:                                               ; preds = %43, %20
  %24 = phi i32 [ %44, %43 ], [ %.promoted, %20 ]
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !2
  %30 = sext i32 %24 to i64
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !2
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4, !tbaa !2
  br i1 %22, label %34, label %42

34:                                               ; preds = %26
  %35 = sext i32 %24 to i64
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !2
  %38 = sext i32 %24 to i64
  %39 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !2
  %41 = mul nsw i32 %40, %37
  store i32 %41, i32* %39, align 4, !tbaa !2
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %24, 1
  br label %23, !llvm.loop !8

45:                                               ; preds = %23
  %.lcssa = phi i32 [ %24, %23 ]
  store i32 %.lcssa, i32* %2, align 4, !tbaa !2
  %46 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %46) #2
  %47 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %47) #2
  %48 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #2
  %49 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #2
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.3"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
